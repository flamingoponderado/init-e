import InitE.BackendStages.BytesData171
import InitE.BackendStages.BytePiecesData171
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section171_eq : ByteData.bytes171 = [piece171_0].flatten := by
  rw [piece171_0_eq]
  rfl
#print axioms section171_eq
end InitE.BackendStages.BytePieces
