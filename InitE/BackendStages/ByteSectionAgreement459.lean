import InitE.BackendStages.BytesData459
import InitE.BackendStages.BytePiecesData459
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section459_eq : ByteData.bytes459 = [piece459_0, piece459_1].flatten := by
  rw [piece459_0_eq, piece459_1_eq]
  rfl
#print axioms section459_eq
end InitE.BackendStages.BytePieces
