import InitE.BackendStages.BytesData91
import InitE.BackendStages.BytePiecesData91
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section91_eq : ByteData.bytes91 = [piece91_0].flatten := by
  rw [piece91_0_eq]
  rfl
#print axioms section91_eq
end InitE.BackendStages.BytePieces
