import InitE.BackendStages.BytesData421
import InitE.BackendStages.BytePiecesData421
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section421_eq : ByteData.bytes421 = [piece421_0].flatten := by
  rw [piece421_0_eq]
  rfl
#print axioms section421_eq
end InitE.BackendStages.BytePieces
