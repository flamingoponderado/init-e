import InitE.BackendStages.BytePiecesData653
import InitE.BackendStages.BytePiecesData654
import InitE.BackendStages.BytePiecesData655
import InitE.BackendStages.BytePiecesData656
import InitECandidate.Bytes125
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate125_eq : InitECandidate.bytes125 = [piece653_1, piece654_0, piece655_0, piece656_0].flatten := by
  rw [piece653_1_eq, piece654_0_eq, piece655_0_eq, piece656_0_eq]
  rfl
#print axioms candidate125_eq
end InitE.BackendStages.BytePieces
