import InitE.BackendStages.BytePiecesData563
import InitE.BackendStages.BytePiecesData564
import InitE.BackendStages.BytePiecesData565
import InitE.BackendStages.BytePiecesData566
import InitE.BackendStages.BytePiecesData567
import InitE.BackendStages.BytePiecesData568
import InitE.BackendStages.BytePiecesData569
import InitECandidate.Bytes089
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate089_eq : InitECandidate.bytes089 = [piece563_1, piece564_0, piece565_0, piece566_0, piece567_0, piece568_0, piece569_0].flatten := by
  rw [piece563_1_eq, piece564_0_eq, piece565_0_eq, piece566_0_eq, piece567_0_eq, piece568_0_eq, piece569_0_eq]
  rfl
#print axioms candidate089_eq
end InitE.BackendStages.BytePieces
