import InitE.BackendStages.BytesData318
import InitE.BackendStages.BytePiecesData318
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section318_eq : ByteData.bytes318 = [piece318_0].flatten := by
  rw [piece318_0_eq]
  rfl
#print axioms section318_eq
end InitE.BackendStages.BytePieces
