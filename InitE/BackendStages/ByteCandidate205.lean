import InitE.BackendStages.BytePiecesData856
import InitE.BackendStages.BytePiecesData857
import InitE.BackendStages.BytePiecesData858
import InitE.BackendStages.BytePiecesData859
import InitE.BackendStages.BytePiecesData860
import InitECandidate.Bytes205
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate205_eq : InitECandidate.bytes205 = [piece856_1, piece857_0, piece858_0, piece859_0, piece860_0].flatten := by
  rw [piece856_1_eq, piece857_0_eq, piece858_0_eq, piece859_0_eq, piece860_0_eq]
  rfl
#print axioms candidate205_eq
end InitE.BackendStages.BytePieces
