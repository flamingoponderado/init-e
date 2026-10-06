import InitE.BackendStages.BytesData2
import InitE.BackendStages.BytePiecesData2
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section2_eq : ByteData.bytes2 = [piece2_0].flatten := by
  rw [piece2_0_eq]
  rfl
#print axioms section2_eq
end InitE.BackendStages.BytePieces
