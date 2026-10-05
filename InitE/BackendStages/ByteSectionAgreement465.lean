import InitE.BackendStages.BytesData465
import InitE.BackendStages.BytePiecesData465
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section465_eq : ByteData.bytes465 = [piece465_0].flatten := by
  rw [piece465_0_eq]
  rfl
#print axioms section465_eq
end InitE.BackendStages.BytePieces
