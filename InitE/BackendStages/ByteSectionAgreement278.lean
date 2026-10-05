import InitE.BackendStages.BytesData278
import InitE.BackendStages.BytePiecesData278
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section278_eq : ByteData.bytes278 = [piece278_0, piece278_1].flatten := by
  rw [piece278_0_eq, piece278_1_eq]
  rfl
#print axioms section278_eq
end InitE.BackendStages.BytePieces
