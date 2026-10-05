import InitE.BackendStages.BytesData878
import InitE.BackendStages.BytePiecesData878
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section878_eq : ByteData.bytes878 = [piece878_0].flatten := by
  rw [piece878_0_eq]
  rfl
#print axioms section878_eq
end InitE.BackendStages.BytePieces
