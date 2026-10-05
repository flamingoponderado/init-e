import InitE.BackendStages.BytesData819
import InitE.BackendStages.BytePiecesData819
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section819_eq : ByteData.bytes819 = [piece819_0].flatten := by
  rw [piece819_0_eq]
  rfl
#print axioms section819_eq
end InitE.BackendStages.BytePieces
