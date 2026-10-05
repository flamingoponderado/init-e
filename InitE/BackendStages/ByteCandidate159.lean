import InitE.BackendStages.BytePiecesData730
import InitE.BackendStages.BytePiecesData731
import InitE.BackendStages.BytePiecesData732
import InitE.BackendStages.BytePiecesData733
import InitE.BackendStages.BytePiecesData734
import InitE.BackendStages.BytePiecesData735
import InitE.BackendStages.BytePiecesData736
import InitECandidate.Bytes159
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate159_eq : InitECandidate.bytes159 = [piece730_1, piece731_0, piece732_0, piece733_0, piece734_0, piece735_0, piece736_0].flatten := by
  rw [piece730_1_eq, piece731_0_eq, piece732_0_eq, piece733_0_eq, piece734_0_eq, piece735_0_eq, piece736_0_eq]
  rfl
#print axioms candidate159_eq
end InitE.BackendStages.BytePieces
