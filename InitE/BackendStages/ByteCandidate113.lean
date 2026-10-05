import InitE.BackendStages.BytePiecesData626
import InitE.BackendStages.BytePiecesData627
import InitECandidate.Bytes113
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate113_eq : InitECandidate.bytes113 = [piece626_1, piece627_0].flatten := by
  rw [piece626_1_eq, piece627_0_eq]
  rfl
#print axioms candidate113_eq
end InitE.BackendStages.BytePieces
