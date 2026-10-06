import InitE.BackendStages.BytesData333
import InitE.BackendStages.BytePiecesData333
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section333_eq : ByteData.bytes333 = [piece333_0, piece333_1].flatten := by
  rw [piece333_0_eq, piece333_1_eq]
  rfl
#print axioms section333_eq
end InitE.BackendStages.BytePieces
