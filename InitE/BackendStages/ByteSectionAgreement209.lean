import InitE.BackendStages.BytesData209
import InitE.BackendStages.BytePiecesData209
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section209_eq : ByteData.bytes209 = [piece209_0].flatten := by
  rw [piece209_0_eq]
  rfl
#print axioms section209_eq
end InitE.BackendStages.BytePieces
