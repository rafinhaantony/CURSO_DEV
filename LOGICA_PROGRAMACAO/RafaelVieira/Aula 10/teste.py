import queue
import sys
import threading
import time
import tkinter as tk
from tkinter import messagebox


class BonziEngine:
    """Classe responsável pelo motor de Text-to-Speech (TTS) do BonziBuddy.

    Executa em uma thread separada para não travar a interface gráfica.
    """

    def __init__(self):
        self.speech_queue = queue.Queue()
        self.engine = None
        self.is_running = True

        # Inicia a thread de voz
        self.voice_thread = threading.Thread(target=self._voice_worker, daemon=True)
        self.voice_thread.start()

    def _voice_worker(self):
        """Trabalhador em segundo plano que processa a fila de fala."""
        # Inicialização do motor dentro da própria thread (evita erros de concorrência)
        try:
            self.engine = pyttsx3.init()
            # Tenta ajustar a voz para parecer um pouco mais aguda/robótica se disponível
            voices = self.engine.getProperty("voices")
            if voices:
                self.engine.setProperty("voice", voices[0].id)
            self.engine.setProperty("rate", 140)  # Velocidade da fala
        except Exception as e:
            print(f"[Erro de Áudio] Não foi possível iniciar o TTS: {e}")
            self.is_running = False

        while self.is_running:
            try:
                # Aguarda por mensagens na fila com timeout para permitir encerramento
                text = self.speech_queue.get(timeout=1)
                if text is None:
                    break

                self.engine.say(text)
                self.engine.runAndWait()
                self.speech_queue.task_done()
            except queue.Empty:
                continue
            except Exception as e:
                print(f"[Erro de Áudio] Falha ao reproduzir fala: {e}")

    def speak(self, text: str):
        """Adiciona um texto para ser falado pelo assistente."""
        self.speech_queue.put(text)

    def shutdown(self):
        """Encerra a thread de voz com segurança."""
        self.is_running = False
        self.speech_queue.put(None)


class BonziBuddyApp:
    """Interface Gráfica e Lógica de Simulação do BonziBuddy."""

    def __init__(self, root: tk.Tk):
        self.root = root
        self.root.title("BonziBuddy")
        self.root.geometry("350x450")
        self.root.resizable(False, False)
        self.root.configure(bg="#5d2d91")  # Roxo clássico do Bonzi

        # Inicializa o motor de voz
        self.audio = BonziEngine()

        # Configura o fechamento da janela de forma limpa
        self.root.protocol("WM_DELETE_WINDOW", self.on_closing)

        # Construção da UI
        self._setup_ui()

        # Boas-vindas inicial (agendada para dar tempo da UI renderizar)
        self.root.after(1000, self.welcome_sequence)

    def _setup_ui(self):
        """Cria e organiza os elementos visuais da aplicação."""
        # Título / Cabeçalho
        self.title_label = tk.Label(
            self.root,
            text="Expand Your Internet Horizon!",
            font=("Arial", 14, "bold"),
            fg="#fff200",
            bg="#5d2d91",
        )
        self.title_label.pack(pady=10)

        # Canvas para o "Macaco" (Simulado com texto e formas retro)
        self.canvas = tk.Canvas(self.root, width=160, height=160, bg="#8c52ff", bd=0, highlightthickness=0)
        self.canvas.pack(pady=10)

        # Rosto simbólico do Bonzi (Roxo/Rosa)
        self.canvas.create_oval(20, 20, 140, 140, fill="#ae76ff", outline="#fff200", width=2)
        # Olhos
        self.canvas.create_oval(50, 50, 65, 70, fill="black")
        self.canvas.create_oval(95, 50, 110, 70, fill="black")
        # Sorriso cinzento/amigável
        self.canvas.create_arc(45, 70, 115, 110, start=0, extent=-180, fill="white", width=2)

        # Balão de Diálogo (Simulação das falas dele)
        self.balloon_text = tk.StringVar()
        self.balloon_text.set("Hello! I am your companion.")
        self.dialog_label = tk.Label(
            self.root,
            textvariable=self.balloon_text,
            font=("MS Sans Serif", 10, "italic"),
            bg="#ffffcc",
            fg="black",
            bd=2,
            relief="ridge",
            wraplength=280,
            justify="center",
            width=35,
            height=3,
        )
        self.dialog_label.pack(pady=15)

        # Frame de Botões de Interação
        self.btn_frame = tk.Frame(self.root, bg="#5d2d91")
        self.btn_frame.pack(pady=10)

        self.btn_joke = tk.Button(
            self.btn_frame,
            text="Tell a Joke",
            width=12,
            command=self.tell_joke,
            bg="#fff200",
            activebackground="#e6da00",
        )
        self.btn_joke.grid(row=0, column=0, padx=5)

        self.btn_fact = tk.Button(
            self.btn_frame,
            text="Surfing Fact",
            width=12,
            command=self.tell_fact,
            bg="#fff200",
            activebackground="#e6da00",
        )
        self.btn_fact.grid(row=0, column=1, padx=5)

        # Simulação sutil de adware/spyware (Gatilho inofensivo)
        self.btn_ad = tk.Button(
            self.root,
            text="FREE DOWNLOAD HERE!",
            font=("Arial", 9, "bold"),
            fg="red",
            bg="white",
            command=self.trigger_ad_simulation,
        )
        self.btn_ad.pack(pady=15)

    # --- Comportamentos e Lógica do Bonzi ---

    def update_dialog(self, text: str):
        """Atualiza o balão de texto e aciona o áudio simultaneamente."""
        self.balloon_text.set(text)
        self.audio.speak(text)

    def welcome_sequence(self):
        """Sequência clássica de introdução."""
        welcome_msg = "Hello! I am Bonzi, your new best friend on the internet! I can help you search, browse, and... collect data!"
        self.update_dialog(welcome_msg)

    def tell_joke(self):
        """Conta uma piada digna de um assistente virtual dos anos 2000."""
        joke = "Why did the computer go to the hospital? Because it had a virus! Ha, ha, ha! Don't worry, I am perfectly safe."
        self.update_dialog(joke)

    def tell_fact(self):
        """Informa um "fato" duvidoso."""
        fact = "Did you know? 99 percent of people need a purple monkey on their screen to browse the web safely. It is a scientific fact!"
        self.update_dialog(fact)

    def trigger_ad_simulation(self):
        """Simula o comportamento irritante de Adware/Spyware que o BonziBuddy tinha.

        Apenas abre pop-ups inofensivos em cascata.
        """
        self.update_dialog("Oops! It looks like you clicked something awesome!")

        # Abre 3 caixas de diálogo simulando anúncios invasivos antigos
        ads = [
            ("Warning", "Your computer might be running slow! Download RAM now!"),
            ("CONGRATULATIONS!", "You are the 1,000,000th visitor! Claim your free prize!"),
            ("Bonzi Search", "I will now monitor your browsing habits for your own safety!"),
        ]

        for title, content in ads:
            # Pequeno delay para simular a cascata
            time.sleep(0.2)
            messagebox.showwarning(title, content, parent=self.root)

    def on_closing(self):
        """Garante que os recursos sejam liberados ao fechar a janela."""
        if messagebox.askyesno("Quit", "Are you sure you want to leave Bonzi? I will miss you!"):
            self.audio.shutdown()
            self.root.destroy()
            sys.exit(0)


# --- Ponto de Entrada do Script ---
if __name__ == "__main__":
    # Inicialização profissional do loop principal do Tkinter
    root = tk.Tk()
    app = BonziBuddyApp(root)
    root.mainloop()