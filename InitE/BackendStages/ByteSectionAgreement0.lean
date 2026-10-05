import InitE.BackendStages.BytesData0
import InitE.BackendStages.BytePiecesData0
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section0_eq : ByteData.bytes0 = [piece0_0].flatten := by
  rw [piece0_0_eq]
  rfl
#print axioms section0_eq
end InitE.BackendStages.BytePieces
