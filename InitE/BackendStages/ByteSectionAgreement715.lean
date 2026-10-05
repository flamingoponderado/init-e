import InitE.BackendStages.BytesData715
import InitE.BackendStages.BytePiecesData715
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section715_eq : ByteData.bytes715 = [piece715_0].flatten := by
  rw [piece715_0_eq]
  rfl
#print axioms section715_eq
end InitE.BackendStages.BytePieces
