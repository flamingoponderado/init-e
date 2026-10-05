import InitE.BackendStages.BytePiecesData326
import InitE.BackendStages.BytePiecesData327
import InitE.BackendStages.BytePiecesData328
import InitE.BackendStages.BytePiecesData329
import InitE.BackendStages.BytePiecesData330
import InitE.BackendStages.BytePiecesData331
import InitE.BackendStages.BytePiecesData332
import InitE.BackendStages.BytePiecesData333
import InitECandidate.Bytes049
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate049_eq : InitECandidate.bytes049 = [piece326_1, piece327_0, piece328_0, piece329_0, piece330_0, piece331_0, piece332_0, piece333_0].flatten := by
  rw [piece326_1_eq, piece327_0_eq, piece328_0_eq, piece329_0_eq, piece330_0_eq, piece331_0_eq, piece332_0_eq, piece333_0_eq]
  rfl
#print axioms candidate049_eq
end InitE.BackendStages.BytePieces
