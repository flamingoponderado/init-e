import Tools.GenSmallStages
import InitE.SmallStages.Oracles820
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 820 InitE.WordStages.source820.2.1 InitE.WordStages.source820.2.2 InitE.SmallStages.Oracles820.oracle820
