import InitE.BackendStages.BytesData722
import InitE.BackendStages.BytePiecesData722
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section722_eq : ByteData.bytes722 = [piece722_0].flatten := by
  rw [piece722_0_eq]
  rfl
#print axioms section722_eq
end InitE.BackendStages.BytePieces
