import InitE.BackendStages.BytesData766
import InitE.BackendStages.BytePiecesData766
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section766_eq : ByteData.bytes766 = [piece766_0].flatten := by
  rw [piece766_0_eq]
  rfl
#print axioms section766_eq
end InitE.BackendStages.BytePieces
