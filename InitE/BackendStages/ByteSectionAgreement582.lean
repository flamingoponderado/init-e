import InitE.BackendStages.BytesData582
import InitE.BackendStages.BytePiecesData582
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section582_eq : ByteData.bytes582 = [piece582_0].flatten := by
  rw [piece582_0_eq]
  rfl
#print axioms section582_eq
end InitE.BackendStages.BytePieces
