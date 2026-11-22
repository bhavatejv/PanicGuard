# \# 🛡️ PanicGuard

# 

# \### Subject-Independent Panic/Stress Detection from Wearable Biosignals

# 

# PanicGuard is an AI-powered wearable biosignal monitoring system designed to detect elevated panic/stress patterns using multiple machine-learning models and a real-time fusion engine.

# 

# The system combines \*\*Bi-LSTM, 1D-CNN, Autoencoder anomaly detection, and HRV-based Random Forest classification\*\* to estimate panic risk and trigger appropriate interventions through a real-time dashboard.

# 

# > \*\*Academic/Research Project:\*\* PanicGuard is intended for research and educational purposes and is \*\*not a medical diagnostic or emergency-response device\*\*.

# 

# \---

# 

# \## 🚀 Key Features

# 

# \- 🧠 \*\*Bi-LSTM\*\* for temporal panic/stress patterns

# \- 📈 \*\*1D-CNN\*\* for short-term biosignal patterns

# \- 🔍 \*\*Autoencoder\*\* for anomaly detection

# \- ❤️ \*\*HRV Random Forest classifier\*\*

# \- 🔀 \*\*Multi-model fusion engine\*\*

# \- ⚙️ Real-time panic \*\*state machine\*\*

# \- 📊 Live FastAPI dashboard

# \- 🔌 WebSocket-based real-time updates

# \- 🆘 SOS escalation mechanism

# \- ❌ User \*\*Cancel Intervention\*\* override

# \- 📡 MQTT cloud integration

# \- 🧪 Simulation mode — no physical hardware required

# \- 🐳 Docker support

# \- 🧪 Integration tests

# 

# \---

# 

# \# 🏗️ System Architecture

# 

# ```text

# Wearable / Simulated Sensors

# &#x20;         │

# &#x20;         ▼

# &#x20;  Sensor Processing

# &#x20;         │

# &#x20;         ├──────────────► Bi-LSTM

# &#x20;         │

# &#x20;         ├──────────────► 1D-CNN

# &#x20;         │

# &#x20;         ├──────────────► Autoencoder

# &#x20;         │

# &#x20;         └──────────────► HRV Random Forest

# &#x20;                             │

# &#x20;                             ▼

# &#x20;                   ┌─────────────────┐

# &#x20;                   │  Fusion Engine   │

# &#x20;                   └────────┬────────┘

# &#x20;                            │

# &#x20;                            ▼

# &#x20;                    Panic State Machine

# &#x20;                            │

# &#x20;             ┌──────────────┼──────────────┐

# &#x20;             ▼              ▼              ▼

# &#x20;       Intervention       Dashboard        SOS

# &#x20;       Controller        WebSocket       Escalation

# ```

# 

# \---

# 

# \# 🧠 Machine Learning Models

# 

# PanicGuard uses four complementary models.

# 

# \### 1. Bi-LSTM

# 

# The Bi-LSTM processes sequential biosignal information and captures temporal changes associated with increasing stress or panic.

# 

# \### 2. 1D-CNN

# 

# The CNN identifies short-term patterns and transient changes in biosignal sequences.

# 

# \### 3. Autoencoder

# 

# The Autoencoder learns normal signal patterns and detects anomalous physiological behavior.

# 

# \### 4. HRV Random Forest

# 

# The HRV classifier uses heart-rate-variability features to provide an additional stress/panic prediction signal.

# 

# \---

# 

# \# 🔀 Fusion Engine

# 

# The four prediction signals are combined using a weighted fusion formula:

# 

# ```text

# fusion\_score = 0.40 × Bi-LSTM

# &#x20;            + 0.25 × CNN

# &#x20;            + 0.20 × Autoencoder

# &#x20;            + 0.15 × Rule-based

# ```

# 

# The system considers the fusion result together with individual model signals.

# 

# \### Fusion HIGH conditions

# 

# A high-risk fusion decision can occur when:

# 

# ```text

# LSTM score > 0.55

# OR CNN score > 0.55

# OR anomaly score > 0.50

# OR fusion score > 0.60

# ```

# 

# \### Why use fusion?

# 

# Each model captures a different characteristic:

# 

# | Model | Main purpose |

# |---|---|

# | Bi-LSTM | Temporal buildup and sequential patterns |

# | 1D-CNN | Short-term/transient signal patterns |

# | Autoencoder | Novel physiological anomalies |

# | HRV / Rule-based | Additional physiological risk information |

# 

# Combining multiple signals reduces dependence on a single model.

# 

# \---

# 

# \# ⚙️ Panic State Machine

# 

# PanicGuard uses a state machine to determine the appropriate response.

# 

# | State | Approximate threshold | Description |

# |---|---:|---|

# | IDLE | `< 0.40` | Normal monitoring |

# | ALERT | `> 0.40` | Early warning |

# | EPISODE | `> 0.60` | Intervention activated |

# | SOS | `> 0.80` | Emergency escalation |

# | COOLDOWN | `< 0.35` | Recovery phase |

# 

# The state machine also supports user overrides and SOS cooldown protection.

# 

# \---

# 

# \# 🛠️ Interventions

# 

# | Intervention | Action |

# |---|---|

# | Haptic | Breathing-guidance vibration |

# | Audio | Calming audio / voice |

# | Water Mist | Configurable pump pulse |

# | LED | Color-coded status indication |

# | SOS | Emergency-contact escalation |

# 

# In simulation mode, the intervention drivers operate without requiring physical hardware.

# 

# \---

# 

# \# 📊 Live Dashboard

# 

# The dashboard is available at:

# 

# ```text

# http://localhost:8080

# ```

# 

# It provides:

# 

# \- Real-time panic-risk gauge

# \- Panic-score history

# \- Live sensor readings

# \- Bi-LSTM score

# \- CNN score

# \- Autoencoder anomaly score

# \- HRV/rule-based information

# \- Fusion-risk indicator

# \- Current state

# \- Episode log

# \- WebSocket live updates

# \- \*\*Cancel Intervention\*\* button

# \- \*\*Trigger SOS\*\* button

# \- Automatic WebSocket reconnection

# 

# \---

# 

# \# 🖥️ Quick Start — Windows

# 

# \## 1. Clone the repository

# 

# ```bash

# git clone https://github.com/bhavatejv/PanicGuard.git

# cd PanicGuard

# ```

# 

# \## 2. Create a Python virtual environment

# 

# Python \*\*3.11\*\* is recommended.

# 

# ```powershell

# py -3.11 -m venv venv311

# ```

# 

# Activate it:

# 

# ```powershell

# .\\venv311\\Scripts\\Activate.ps1

# ```

# 

# \## 3. Install dependencies

# 

# ```powershell

# pip install -r requirements.txt

# ```

# 

# \## 4. Run the simulation

# 

# ```powershell

# python main.py --mode simulate --panic-at 15 --duration 180

# ```

# 

# Then open:

# 

# ```text

# http://localhost:8080

# ```

# 

# The simulation generates sensor data and runs the complete PanicGuard pipeline.

# 

# \---

# 

# \# ⚡ One-Click Windows Launcher

# 

# After cloning and installing dependencies, you can start PanicGuard using:

# 

# ```powershell

# .\\start\_panicguard.bat

# ```

# 

# The launcher:

# 

# 1\. Activates the Python environment

# 2\. Starts the PanicGuard simulation

# 3\. Waits for the FastAPI server

# 4\. Opens the dashboard automatically

# 

# Dashboard:

# 

# ```text

# http://localhost:8080

# ```

# 

# \---

# 

# \# 🧪 Model Training

# 

# The trained model binaries are intentionally \*\*not stored in this Git repository\*\* because they are large.

# 

# The following files are generated locally after training:

# 

# ```text

# models/

# ├── bilstm.keras

# ├── bilstm.tflite

# ├── bilstm\_scaler.pkl

# ├── cnn.keras

# ├── cnn.tflite

# ├── autoencoder.keras

# ├── autoencoder.tflite

# ├── autoencoder\_threshold.pkl

# └── hrv\_panic\_classifier.pkl

# ```

# 

# \## WESAD Training

# 

# Download and extract the WESAD dataset separately.

# 

# Then run:

# 

# ```powershell

# python -m ml.train\_wesad --wesad "PATH\_TO\_WESAD"

# ```

# 

# Example:

# 

# ```powershell

# python -m ml.train\_wesad --wesad "D:\\WESAD\\WESAD"

# ```

# 

# \## HRV Training

# 

# After obtaining the required HRV dataset:

# 

# ```powershell

# python -m ml.train\_hrv --data-dir "PATH\_TO\_HRV\_DATA" --model-dir "models"

# ```

# 

# Example:

# 

# ```powershell

# python -m ml.train\_hrv --data-dir "D:\\HRV\_DATA\\hrv dataset\\data\\final" --model-dir "models"

# ```

# 

# \---

# 

# \# 📈 Model Evaluation

# 

# To evaluate the available models:

# 

# ```powershell

# python evaluate\_models.py

# ```

# 

# \---

# 

# \# 🧪 Testing

# 

# Run the integration tests with:

# 

# ```powershell

# python -m pytest

# ```

# 

# \---

# 

# \# 📡 Cloud Integration — MQTT

# 

# MQTT integration can be enabled through:

# 

# ```text

# config/device.yaml

# ```

# 

# Set:

# 

# ```yaml

# mqtt:

# &#x20; enabled: true

# ```

# 

# PanicGuard can publish information such as:

# 

# ```text

# panicguard/{device\_id}/score

# panicguard/{device\_id}/state

# panicguard/{device\_id}/fusion

# panicguard/{device\_id}/episode

# panicguard/{device\_id}/status

# ```

# 

# The default configuration uses:

# 

# ```text

# test.mosquitto.org

# ```

# 

# For production or real-world deployment, use an appropriately secured MQTT broker rather than a public test broker.

# 

# \---

# 

# \# 📚 Datasets

# 

# PanicGuard uses wearable-biosignal and HRV datasets for model development.

# 

# | Dataset | Subjects | Purpose |

# |---|---:|---|

# | WESAD | 15 | Bi-LSTM, CNN, Autoencoder |

# | HRV Stress Dataset | — | HRV-based Random Forest |

# 

# The datasets are \*\*not included in this repository\*\*.

# 

# Users must obtain the datasets separately and comply with their respective licenses and usage conditions.

# 

# \---

# 

# \# 📁 Project Structure

# 

# ```text

# PanicGuard/

# │

# ├── app/

# │   ├── server.py

# │   └── static/

# │       └── dashboard.html

# │

# ├── cloud/

# │   ├── \_\_init\_\_.py

# │   └── mqtt\_bridge.py

# │

# ├── config/

# │   └── device.yaml

# │

# ├── core/

# │   ├── event\_bus.py

# │   └── state\_machine.py

# │

# ├── interventions/

# │   └── drivers.py

# │

# ├── ml/

# │   ├── inference.py

# │   ├── predictive\_model.py

# │   ├── sequence\_buffer.py

# │   ├── sklearn\_adapter.py

# │   ├── train\_hrv.py

# │   ├── train\_wesad.py

# │   └── wesad\_loader.py

# │

# ├── models/

# │   └── README.md

# │

# ├── sensors/

# │   └── ppg.py

# │

# ├── tests/

# │   └── test\_full\_pipeline.py

# │

# ├── evaluate\_models.py

# ├── main.py

# ├── Dockerfile

# ├── requirements.txt

# ├── start\_panicguard.bat

# ├── .dockerignore

# ├── .gitignore

# └── README.md

# ```

# 

# \---

# 

# \# 🐳 Docker

# 

# Build the Docker image:

# 

# ```bash

# docker build -t panicguard .

# ```

# 

# Run the container:

# 

# ```bash

# docker run -p 8080:8080 panicguard

# ```

# 

# Then open:

# 

# ```text

# http://localhost:8080

# ```

# 

# \---

# 

# \# 🔐 Safety Notice

# 

# PanicGuard is an academic/research prototype.

# 

# It should \*\*not\*\* be relied upon for:

# 

# \- Medical diagnosis

# \- Emergency medical decisions

# \- Clinical treatment

# \- Automatic emergency dispatch

# \- Replacement of qualified healthcare professionals

# 

# Model predictions can contain false positives and false negatives.

# 

# \---

# 

# \# 🎓 Project Objective

# 

# The primary objective of PanicGuard is to demonstrate how multiple wearable-biosignal machine-learning models can be combined into a real-time panic/stress monitoring pipeline.

# 

# The project integrates:

# 

# ```text

# Wearable Biosignals

# &#x20;       ↓

# Signal Processing

# &#x20;       ↓

# Multiple ML Models

# &#x20;       ↓

# Fusion Engine

# &#x20;       ↓

# State Machine

# &#x20;       ↓

# Intervention

# &#x20;       ↓

# Real-Time Dashboard

# ```

# 

# \---

# 

# \# 👨‍💻 Author

# 

# \*\*Bhavatej V\*\*

# 

# Computer Science \& Engineering  

# MS Ramaiah Institute of Technology

# 

# GitHub:

# 

# https://github.com/bhavatejv/PanicGuard

# 

# \---

# 

# \# 📄 License

# 

# This project is licensed under the \*\*MIT License\*\*.

# 

# See the \[`LICENSE`](LICENSE) file for details.

