import InitE.BackendStages.BytesData720
import InitE.BackendStages.BytePiecesData720
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section720_eq : ByteData.bytes720 = [piece720_0].flatten := by
  rw [piece720_0_eq]
  rfl
#print axioms section720_eq
end InitE.BackendStages.BytePieces
