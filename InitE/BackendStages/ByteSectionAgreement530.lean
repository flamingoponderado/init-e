import InitE.BackendStages.BytesData530
import InitE.BackendStages.BytePiecesData530
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section530_eq : ByteData.bytes530 = [piece530_0].flatten := by
  rw [piece530_0_eq]
  rfl
#print axioms section530_eq
end InitE.BackendStages.BytePieces
