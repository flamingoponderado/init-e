import InitE.BackendStages.BytesData200
import InitE.BackendStages.BytePiecesData200
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section200_eq : ByteData.bytes200 = [piece200_0].flatten := by
  rw [piece200_0_eq]
  rfl
#print axioms section200_eq
end InitE.BackendStages.BytePieces
