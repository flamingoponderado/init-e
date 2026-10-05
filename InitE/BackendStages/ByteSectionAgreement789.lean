import InitE.BackendStages.BytesData789
import InitE.BackendStages.BytePiecesData789
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section789_eq : ByteData.bytes789 = [piece789_0, piece789_1].flatten := by
  rw [piece789_0_eq, piece789_1_eq]
  rfl
#print axioms section789_eq
end InitE.BackendStages.BytePieces
