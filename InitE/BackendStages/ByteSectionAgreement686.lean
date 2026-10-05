import InitE.BackendStages.BytesData686
import InitE.BackendStages.BytePiecesData686
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section686_eq : ByteData.bytes686 = [piece686_0].flatten := by
  rw [piece686_0_eq]
  rfl
#print axioms section686_eq
end InitE.BackendStages.BytePieces
