import InitE.BackendStages.BytePiecesData846
import InitE.BackendStages.BytePiecesData847
import InitE.BackendStages.BytePiecesData848
import InitECandidate.Bytes202
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate202_eq : InitECandidate.bytes202 = [piece846_1, piece847_0, piece848_0].flatten := by
  rw [piece846_1_eq, piece847_0_eq, piece848_0_eq]
  rfl
#print axioms candidate202_eq
end InitE.BackendStages.BytePieces
