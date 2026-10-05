import InitE.BackendStages.BytePiecesData0
import InitE.BackendStages.BytePiecesData1
import InitE.BackendStages.BytePiecesData2
import InitE.BackendStages.BytePiecesData4
import InitE.BackendStages.BytePiecesData5
import InitE.BackendStages.BytePiecesData6
import InitE.BackendStages.BytePiecesData64
import InitE.BackendStages.BytePiecesData65
import InitECandidate.Bytes000
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate000_eq : InitECandidate.bytes000 = [piece0_0, piece1_0, piece2_0, piece4_0, piece5_0, piece6_0, piece64_0, piece65_0].flatten := by
  rw [piece0_0_eq, piece1_0_eq, piece2_0_eq, piece4_0_eq, piece5_0_eq, piece6_0_eq, piece64_0_eq, piece65_0_eq]
  rfl
#print axioms candidate000_eq
end InitE.BackendStages.BytePieces
