import InitE.BackendStages.BytesData116
import InitE.BackendStages.BytePiecesData116
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section116_eq : ByteData.bytes116 = [piece116_0].flatten := by
  rw [piece116_0_eq]
  rfl
#print axioms section116_eq
end InitE.BackendStages.BytePieces
