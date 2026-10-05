import InitE.BackendStages.BytesData856
import InitE.BackendStages.BytePiecesData856
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section856_eq : ByteData.bytes856 = [piece856_0, piece856_1].flatten := by
  rw [piece856_0_eq, piece856_1_eq]
  rfl
#print axioms section856_eq
end InitE.BackendStages.BytePieces
