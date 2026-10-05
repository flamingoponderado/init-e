import InitE.BackendStages.BytesData714
import InitE.BackendStages.BytePiecesData714
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section714_eq : ByteData.bytes714 = [piece714_0].flatten := by
  rw [piece714_0_eq]
  rfl
#print axioms section714_eq
end InitE.BackendStages.BytePieces
