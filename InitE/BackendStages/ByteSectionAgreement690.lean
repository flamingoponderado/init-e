import InitE.BackendStages.BytesData690
import InitE.BackendStages.BytePiecesData690
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section690_eq : ByteData.bytes690 = [piece690_0].flatten := by
  rw [piece690_0_eq]
  rfl
#print axioms section690_eq
end InitE.BackendStages.BytePieces
