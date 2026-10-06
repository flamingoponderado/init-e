import InitE.BackendStages.BytesData849
import InitE.BackendStages.BytePiecesData849
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section849_eq : ByteData.bytes849 = [piece849_0].flatten := by
  rw [piece849_0_eq]
  rfl
#print axioms section849_eq
end InitE.BackendStages.BytePieces
