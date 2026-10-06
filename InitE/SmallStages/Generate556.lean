import Tools.GenSmallStages
import InitE.SmallStages.Oracles556
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 556 InitE.WordStages.source556.2.1 InitE.WordStages.source556.2.2 InitE.SmallStages.Oracles556.oracle556
