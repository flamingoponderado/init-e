import InitE.BackendStages.BytesData104
import InitE.BackendStages.BytePiecesData104
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section104_eq : ByteData.bytes104 = [piece104_0].flatten := by
  rw [piece104_0_eq]
  rfl
#print axioms section104_eq
end InitE.BackendStages.BytePieces
