import InitE.BackendStages.BytePiecesData815
import InitE.BackendStages.BytePiecesData816
import InitE.BackendStages.BytePiecesData817
import InitECandidate.Bytes192
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate192_eq : InitECandidate.bytes192 = [piece815_1, piece816_0, piece817_0].flatten := by
  rw [piece815_1_eq, piece816_0_eq, piece817_0_eq]
  rfl
#print axioms candidate192_eq
end InitE.BackendStages.BytePieces
