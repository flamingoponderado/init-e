import InitE.BackendStages.BytePiecesData214
import InitE.BackendStages.BytePiecesData215
import InitE.BackendStages.BytePiecesData216
import InitE.BackendStages.BytePiecesData217
import InitE.BackendStages.BytePiecesData218
import InitE.BackendStages.BytePiecesData219
import InitE.BackendStages.BytePiecesData220
import InitE.BackendStages.BytePiecesData221
import InitECandidate.Bytes017
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate017_eq : InitECandidate.bytes017 = [piece214_1, piece215_0, piece216_0, piece217_0, piece218_0, piece219_0, piece220_0, piece221_0].flatten := by
  rw [piece214_1_eq, piece215_0_eq, piece216_0_eq, piece217_0_eq, piece218_0_eq, piece219_0_eq, piece220_0_eq, piece221_0_eq]
  rfl
#print axioms candidate017_eq
end InitE.BackendStages.BytePieces
