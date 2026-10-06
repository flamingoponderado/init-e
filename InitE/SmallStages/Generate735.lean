import Tools.GenSmallStages
import InitE.SmallStages.Oracles735
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 735 InitE.WordStages.source735.2.1 InitE.WordStages.source735.2.2 InitE.SmallStages.Oracles735.oracle735
