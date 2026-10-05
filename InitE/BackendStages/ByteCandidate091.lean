import InitE.BackendStages.BytePiecesData572
import InitE.BackendStages.BytePiecesData573
import InitE.BackendStages.BytePiecesData574
import InitE.BackendStages.BytePiecesData575
import InitE.BackendStages.BytePiecesData576
import InitE.BackendStages.BytePiecesData577
import InitE.BackendStages.BytePiecesData578
import InitECandidate.Bytes091
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate091_eq : InitECandidate.bytes091 = [piece572_1, piece573_0, piece574_0, piece575_0, piece576_0, piece577_0, piece578_0].flatten := by
  rw [piece572_1_eq, piece573_0_eq, piece574_0_eq, piece575_0_eq, piece576_0_eq, piece577_0_eq, piece578_0_eq]
  rfl
#print axioms candidate091_eq
end InitE.BackendStages.BytePieces
