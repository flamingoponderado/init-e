import InitE.BackendStages.BytesData385
import InitE.BackendStages.BytePiecesData385
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section385_eq : ByteData.bytes385 = [piece385_0].flatten := by
  rw [piece385_0_eq]
  rfl
#print axioms section385_eq
end InitE.BackendStages.BytePieces
