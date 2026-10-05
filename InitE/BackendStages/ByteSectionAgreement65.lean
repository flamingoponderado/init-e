import InitE.BackendStages.BytesData65
import InitE.BackendStages.BytePiecesData65
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section65_eq : ByteData.bytes65 = [piece65_0, piece65_1].flatten := by
  rw [piece65_0_eq, piece65_1_eq]
  rfl
#print axioms section65_eq
end InitE.BackendStages.BytePieces
