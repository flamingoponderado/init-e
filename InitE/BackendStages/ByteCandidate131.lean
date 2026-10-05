import InitE.BackendStages.BytePiecesData675
import InitE.BackendStages.BytePiecesData676
import InitE.BackendStages.BytePiecesData677
import InitE.BackendStages.BytePiecesData678
import InitE.BackendStages.BytePiecesData679
import InitE.BackendStages.BytePiecesData680
import InitE.BackendStages.BytePiecesData681
import InitE.BackendStages.BytePiecesData682
import InitECandidate.Bytes131
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate131_eq : InitECandidate.bytes131 = [piece675_1, piece676_0, piece677_0, piece678_0, piece679_0, piece680_0, piece681_0, piece682_0].flatten := by
  rw [piece675_1_eq, piece676_0_eq, piece677_0_eq, piece678_0_eq, piece679_0_eq, piece680_0_eq, piece681_0_eq, piece682_0_eq]
  rfl
#print axioms candidate131_eq
end InitE.BackendStages.BytePieces
