import InitE.BackendStages.BytePiecesData513
import InitE.BackendStages.BytePiecesData514
import InitE.BackendStages.BytePiecesData515
import InitE.BackendStages.BytePiecesData516
import InitE.BackendStages.BytePiecesData517
import InitE.BackendStages.BytePiecesData518
import InitE.BackendStages.BytePiecesData519
import InitECandidate.Bytes079
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate079_eq : InitECandidate.bytes079 = [piece513_1, piece514_0, piece515_0, piece516_0, piece517_0, piece518_0, piece519_0].flatten := by
  rw [piece513_1_eq, piece514_0_eq, piece515_0_eq, piece516_0_eq, piece517_0_eq, piece518_0_eq, piece519_0_eq]
  rfl
#print axioms candidate079_eq
end InitE.BackendStages.BytePieces
