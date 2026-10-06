import InitE.BackendStages.BytesData780
import InitE.BackendStages.BytePiecesData780
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section780_eq : ByteData.bytes780 = [piece780_0].flatten := by
  rw [piece780_0_eq]
  rfl
#print axioms section780_eq
end InitE.BackendStages.BytePieces
