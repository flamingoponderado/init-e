import InitE.BackendStages.BytePiecesData588
import InitE.BackendStages.BytePiecesData589
import InitE.BackendStages.BytePiecesData590
import InitECandidate.Bytes094
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate094_eq : InitECandidate.bytes094 = [piece588_1, piece589_0, piece590_0].flatten := by
  rw [piece588_1_eq, piece589_0_eq, piece590_0_eq]
  rfl
#print axioms candidate094_eq
end InitE.BackendStages.BytePieces
