import InitE.BackendStages.BytePiecesData866
import InitE.BackendStages.BytePiecesData867
import InitE.BackendStages.BytePiecesData868
import InitE.BackendStages.BytePiecesData869
import InitE.BackendStages.BytePiecesData870
import InitE.BackendStages.BytePiecesData871
import InitE.BackendStages.BytePiecesData872
import InitECandidate.Bytes211
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate211_eq : InitECandidate.bytes211 = [piece866_1, piece867_0, piece868_0, piece869_0, piece870_0, piece871_0, piece872_0].flatten := by
  rw [piece866_1_eq, piece867_0_eq, piece868_0_eq, piece869_0_eq, piece870_0_eq, piece871_0_eq, piece872_0_eq]
  rfl
#print axioms candidate211_eq
end InitE.BackendStages.BytePieces
