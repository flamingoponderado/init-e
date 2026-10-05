import InitE.BackendStages.BytePiecesData524
import InitE.BackendStages.BytePiecesData525
import InitE.BackendStages.BytePiecesData526
import InitE.BackendStages.BytePiecesData527
import InitE.BackendStages.BytePiecesData528
import InitECandidate.Bytes081
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate081_eq : InitECandidate.bytes081 = [piece524_1, piece525_0, piece526_0, piece527_0, piece528_0].flatten := by
  rw [piece524_1_eq, piece525_0_eq, piece526_0_eq, piece527_0_eq, piece528_0_eq]
  rfl
#print axioms candidate081_eq
end InitE.BackendStages.BytePieces
