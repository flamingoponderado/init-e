import InitE.BackendStages.BytesData665
import InitE.BackendStages.BytePiecesData665
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section665_eq : ByteData.bytes665 = [piece665_0].flatten := by
  rw [piece665_0_eq]
  rfl
#print axioms section665_eq
end InitE.BackendStages.BytePieces
