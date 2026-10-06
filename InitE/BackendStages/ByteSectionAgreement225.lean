import InitE.BackendStages.BytesData225
import InitE.BackendStages.BytePiecesData225
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section225_eq : ByteData.bytes225 = [piece225_0].flatten := by
  rw [piece225_0_eq]
  rfl
#print axioms section225_eq
end InitE.BackendStages.BytePieces
