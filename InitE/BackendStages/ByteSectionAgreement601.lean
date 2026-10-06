import InitE.BackendStages.BytesData601
import InitE.BackendStages.BytePiecesData601
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section601_eq : ByteData.bytes601 = [piece601_0].flatten := by
  rw [piece601_0_eq]
  rfl
#print axioms section601_eq
end InitE.BackendStages.BytePieces
