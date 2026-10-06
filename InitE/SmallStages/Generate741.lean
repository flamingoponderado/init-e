import Tools.GenSmallStages
import InitE.SmallStages.Oracles741
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 741 InitE.WordStages.source741.2.1 InitE.WordStages.source741.2.2 InitE.SmallStages.Oracles741.oracle741
