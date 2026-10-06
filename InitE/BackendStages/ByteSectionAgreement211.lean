import InitE.BackendStages.BytesData211
import InitE.BackendStages.BytePiecesData211
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section211_eq : ByteData.bytes211 = [piece211_0, piece211_1].flatten := by
  rw [piece211_0_eq, piece211_1_eq]
  rfl
#print axioms section211_eq
end InitE.BackendStages.BytePieces
