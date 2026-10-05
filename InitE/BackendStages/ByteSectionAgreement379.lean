import InitE.BackendStages.BytesData379
import InitE.BackendStages.BytePiecesData379
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section379_eq : ByteData.bytes379 = [piece379_0].flatten := by
  rw [piece379_0_eq]
  rfl
#print axioms section379_eq
end InitE.BackendStages.BytePieces
