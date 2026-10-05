import InitE.BackendStages.BytesData414
import InitE.BackendStages.BytePiecesData414
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section414_eq : ByteData.bytes414 = [piece414_0].flatten := by
  rw [piece414_0_eq]
  rfl
#print axioms section414_eq
end InitE.BackendStages.BytePieces
