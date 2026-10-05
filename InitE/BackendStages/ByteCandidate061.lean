import InitE.BackendStages.BytePiecesData403
import InitE.BackendStages.BytePiecesData404
import InitE.BackendStages.BytePiecesData405
import InitE.BackendStages.BytePiecesData406
import InitE.BackendStages.BytePiecesData407
import InitE.BackendStages.BytePiecesData408
import InitE.BackendStages.BytePiecesData409
import InitE.BackendStages.BytePiecesData410
import InitE.BackendStages.BytePiecesData411
import InitE.BackendStages.BytePiecesData412
import InitECandidate.Bytes061
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate061_eq : InitECandidate.bytes061 = [piece403_1, piece404_0, piece405_0, piece406_0, piece407_0, piece408_0, piece409_0, piece410_0, piece411_0, piece412_0].flatten := by
  rw [piece403_1_eq, piece404_0_eq, piece405_0_eq, piece406_0_eq, piece407_0_eq, piece408_0_eq, piece409_0_eq, piece410_0_eq, piece411_0_eq, piece412_0_eq]
  rfl
#print axioms candidate061_eq
end InitE.BackendStages.BytePieces
