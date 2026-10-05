import InitE.BackendStages.BytePiecesData365
import InitE.BackendStages.BytePiecesData366
import InitE.BackendStages.BytePiecesData367
import InitE.BackendStages.BytePiecesData368
import InitE.BackendStages.BytePiecesData369
import InitECandidate.Bytes055
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate055_eq : InitECandidate.bytes055 = [piece365_1, piece366_0, piece367_0, piece368_0, piece369_0].flatten := by
  rw [piece365_1_eq, piece366_0_eq, piece367_0_eq, piece368_0_eq, piece369_0_eq]
  rfl
#print axioms candidate055_eq
end InitE.BackendStages.BytePieces
